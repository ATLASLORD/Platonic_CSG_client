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
    var fullBrushListPromise = $.get("coui://pa/terrain/brush_list.json")
    //these brushes either crash the game(lava crack 5), or do nothing when selected
    var invalidBrushes = [
      "/pa/terrain/lava/brushes/lava_crack_05.json",
      "/pa/terrain/moon/brushes/crater_compound_01.json",
      "/pa/terrain/lava/brushes/lava_rock_13.json",
      "/pa/terrain/lava/brushes/lava_rock_14.json",
      "/pa/terrain/lava/brushes/lava_rock_15.json",
      "/pa/terrain/lava/brushes/lava_rock_16.json",
      "/pa/terrain/metal/brushes/metal_cap_01.json",
      "/pa/terrain/metal/brushes/metal_cap_02.json",
      "/pa/terrain/metal/brushes/metal_cap_03.json",
      "/pa/terrain/metal/brushes/metal_trench_11.json",
      "/pa/terrain/metal/brushes/metal_trench_12.json",
      "/pa/terrain/metal/brushes/metal_trench_13.json",
      "/pa/terrain/metal/brushes/metal_trench_pit.json",
      "/pa/terrain/metal/brushes/metal_weapon_platforms.json",
  ]
    var process = function (biome) {
      var deferred = $.Deferred();
      var url = "coui://pa/terrain/" + biome + "/" + biome + ".json";
      $.get(url).always(function (contents) {
        var result = [];

        try {
          contents = decode(contents);
          result = contents.brushes;
        } catch (e) {
          console.error("failed to parse biome:" + url);
        }

        deferred.resolve(result);
      });

      return deferred;
    };

    /* don't use the grass biome here  */
    var brush_groups_biomes = [
      "platonic_csg"
    ];

    _.forEach(brush_groups_biomes, function(value){
      model.brushBiomes().push(value)
    })
    
    fullBrushListPromise.then(function(fullBrushList){
      UberUtility.waitForAll(_.map(brush_groups_biomes, process)).then(
        function (list) {
         
          var result = {};


          _.forEach(list, function(biomeBrushList){
            _.map(biomeBrushList, function(brush){
              fullBrushList.brushes = _.filter(fullBrushList.brushes, function(brushSpec){
                return brushSpec !== brush.brush_spec && !_.contains(invalidBrushes, brushSpec);
              }); 
            })
          })

          //adds in hidden csg brushes
          _.map(fullBrushList.brushes, function(brushSpec){

            var brushObject = {
              brush_spec:brushSpec,
              op: "BO_Add",
              proj: "BP_Bend",
              group: "Hidden",
              scale:[1,1,1]
            }
            
            var needsSubtract = ["crack","pit","trench","crater","sub"]
            for(var i = 0; i< needsSubtract.length;i++){
        
              if(_.includes(brushSpec,needsSubtract[i])){
                brushObject.op = "BO_Subtract"
              }
              if(_.includes(brushSpec,"add")){
                brushObject.op = "BO_Add"
              }
            }

            for(var i = 0; i< brush_groups_biomes.length;i++){
              if(brush_groups_biomes[i] == "metal"){brushObject.proj = "BP_LongitudePinch"}
        
              if(_.includes(brushSpec,brush_groups_biomes[i])){
                list[i].push(brushObject)
              }
              else if(_.includes(brushSpec,"grass") && brush_groups_biomes[i] == "jungle"){list[i].push(brushObject)}
            }

          })
        
          var process = function (element) {
            /* brushes are added to layer zero to indicate a WIP. they should not be used. */
            if (!element) return null;

            if (element.layer === 0){ element.layer = 3;};
      
            element.icon = ko.observable(false);

            specToImage(element);
            specToTitle(element);

           
            $.get(element.image).done(function(){element.icon(true)}).fail(function(){element.icon(false)})
         
          

            return _.omit(element, [
              "bias",
              "biome_distance_range",
              "layer",
              "noise_range",
              "note",
              "scale_variation",
              "threshold",
              "weight",
              "weight_hard",
              "weight_scale",
              "planet_size_range",
              "max_instances",
              "elevation_range",
              "fixed_orient",
              "pole_distance_range",
              "latitude_snap",
              "longitude_snap",
            ]);
          };

          _.forEach(list, function (element, index) {
            var brushes = _.compact(_.map(element, process));
            var groups = {};
            _.forEach(brushes, function (brush) {

              var group = brush.group;
              if (!group) brush.group = group = "basic";

              if (!groups[group]) groups[group] = [];

              groups[group].push(brush);
            });

            if (brushes.length) result[brush_groups_biomes[index]] = groups;
          });

          var resultKeys = _.keys(result)

          for(var i = 0; i< resultKeys.length;i++){
            model.brushMap()[resultKeys[i]] = result[resultKeys[i]]
          }
        }
      );
    })
    
  });
})();
