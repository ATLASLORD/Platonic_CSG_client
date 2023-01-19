console.log("Generating buttons for custom CSG from csg_example");
(function() {
  var start = /[^\/]*$/;
  var end = /[.]json[^\/]*$/;

  var specToTitle = function (csg) {

    if (!csg || !csg.brush_spec)
      return csg;

    var zeros = /0+(?=\d)/;
    var title = csg.brush_spec;

    title = title.substring(title.search(start), title.search(end));
    title = title.replace(zeros, '');
    title = title.replace(/_/g, ' ');
    csg.title = title;
  };

  var specToImage = function (csg) {

    if (!csg || !csg.brush_spec)
      return '';

    var title = csg.brush_spec;
    title = title.substring(title.search(start), title.search(end));

    var image = 'coui://ui/main/game/system_editor/img/brushes/' + title + '.png';
    csg.image = image;
  };

  var brushMapRule = ko.computed(function () {
    if (model.brushMap()['platonic_csg']) return

    var process = function (biome) {
      var deferred = $.Deferred();
      var url = 'coui://pa/terrain/' + biome + '/' + biome + '.json';
      $.get(url).always(function (contents) {
        var result = [];

        try {
          contents = decode(contents);
          result = contents.brushes;
        }
        catch (e)
        {
          console.error('failed to parse biome:' + url);
        }

        deferred.resolve(result);
      });

      return deferred;
    };

    /* Enter your biomes here, exacly as the biome folder is spelt. */
    var brush_groups_biomes = ['platonic_csg'];

    UberUtility.waitForAll(_.map(brush_groups_biomes, process)).then(function (list) {

      var result = model.brushMap()

      var process = function (element) {
        /* brushes are added to layer zero to indicate a WIP. they should not be used. */
        if (!element || element.layer === 0)
          return null;

        specToImage(element);
        specToTitle(element);

        return _.omit(element, ['bias',
                      'biom_distance_range',
                      'layer',
                      'noise_range',
                      'note',
                      'scale_variation',
                      'threshold',
                      'weight',
                      'weight_hard',
                      'weight_scale',
                      'planet_size_range',
                      'max_instances',
                      'elevation_range',
                      'fixed_orient',
                      'pole_distance_range',
                      'latitude_snap',
                      'longitude_snap']);
      };

      _.forEach(list, function (element, index) {
        var brushes = _.compact(_.map(element, process));
        var groups = {};

        _.forEach(brushes, function (brush) {
          var group = brush.group;
          if (!group)
            return;

          if (!groups[group])
            groups[group] = [];

          groups[group].push(brush)
        });

        if (brushes.length)
          result[brush_groups_biomes[index]] = groups;
      });

      model.brushMap(result);
    });
  });
})();
