import { VoronoiBuilder } from '/goggles-maps/scripts/voronoi-builder-goggles.js';
import { WrapType, VoronoiUtils } from '/goggles-maps/scripts/kd-tree-goggles.js';
import '/core/scripts/external/TypeScript-Voronoi-master/src/diagram.js';
//import '/base-standard/scripts/voronoi-hex.js';
import '/goggles-maps/scripts/voronoi-hex-goggles.js';
import '/core/scripts/MathHelpers.js';
import '/base-standard/scripts/heap.js';
import '/goggles-maps/scripts/voronoi_generators/continent-generator-goggles.js';
import '/base-standard/scripts/quadtree.js';
import '/base-standard/scripts/voronoi_rules/near-other-region.js';
import '/core/scripts/external/TypeScript-Voronoi-master/src/site.js';
import '/base-standard/scripts/voronoi_rules/rules-base.js';
import '/base-standard/scripts/random-pcg-32.js';
import '/base-standard/scripts/voronoi-region.js';
import '/goggles-maps/scripts/voronoi_generators/map-generator-goggles.js';
import '/core/scripts/external/TypeScript-Voronoi-master/src/voronoi.js';
import '/core/scripts/external/TypeScript-Voronoi-master/src/rbtree.js';
import '/core/scripts/external/TypeScript-Voronoi-master/src/vertex.js';
import '/core/scripts/external/TypeScript-Voronoi-master/src/edge.js';
import '/core/scripts/external/TypeScript-Voronoi-master/src/cell.js';
import '/core/scripts/external/TypeScript-Voronoi-master/src/halfedge.js';
import '/base-standard/scripts/voronoi_rules/avoid-edge.js';
import '/base-standard/scripts/voronoi_rules/avoid-other-regions.js';
import '/base-standard/scripts/voronoi_rules/cell-area.js';
import '/base-standard/scripts/voronoi_rules/near-map-center.js';
import '/base-standard/scripts/voronoi_rules/near-neighbor.js';
import '/base-standard/scripts/voronoi_rules/near-plate-boundary.js';
import '/base-standard/scripts/voronoi_rules/near-region-seed.js';
import '/base-standard/scripts/voronoi_rules/neighbors-in-region.js';
import '/base-standard/scripts/voronoi_rules/prefer-latitude.js';

class VoronoiMap {
  m_builder = new VoronoiBuilder();
  m_initialized = false;
  getHexTiles() {
    return this.m_builder.getHexTiles();
  }
  getGenerator() {
    return this.m_builder.getGenerator();
  }
  createMajorPlayerAreas(valueFunction) {
    this.m_builder.createMajorPlayerAreas(valueFunction);
  }
  simulate() {
    this.m_builder.simulate();
  }
  initInternal(mapSize, generatorType, defaultGeneratorSettings, cellCountMultiple, relaxationSteps, wrap = WrapType.None) {
    this.m_builder.init(mapSize, generatorType, cellCountMultiple, relaxationSteps, wrap);
    if (defaultGeneratorSettings && !this.m_initialized) {
      VoronoiUtils.loadSettingsFromJson(defaultGeneratorSettings, this);
    }
    this.m_initialized = true;
  }
  createDefaultSettings() {
    const settings = {};
    for (const [key, value] of Object.entries(this.getSettingsConfig())) {
      settings[key] = value.default;
    }
    return settings;
  }
  getName() {
    const ctor = this.constructor;
    return ctor.getName();
  }
}

export { VoronoiMap };
//# sourceMappingURL=map-common.js.map
