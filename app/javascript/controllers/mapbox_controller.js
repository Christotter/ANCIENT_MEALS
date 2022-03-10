import { Controller } from "stimulus"
import mapboxgl from "mapbox-gl"




export default class extends Controller {
  static targets = [ "output" ]
  static values = {
    longitude: Number,
    latitude: Number,
    code: String
  }

  connect() {
    mapboxgl.accessToken = "pk.eyJ1IjoibGFsaWdiIiwiYSI6ImNrejhqdTMydzB3a2Eyb211cjJyZG95NmcifQ.gkDhUGob--lX_-nsAnMS0A"
    if (!mapboxgl.supported()) {
      alert('Your browser does not support Mapbox GL');
      }

      // let lon = 12.496366;
      let lon = this.longitudeValue;
      let lat  = this.latitudeValue;
      let code  = this.codeValue;

      console.log(lat, lon)

    this.map = new mapboxgl.Map({
      container: "map",
      style: "mapbox://styles/mapbox/light-v10",
      center: [lat, lon],
      //center: [23.727539, 37.983810],
      zoom: 0.3
    })


    this.map.on('load', () => {
     // filterLayers(worldViewOnMapLoad);

     this.map.addLayer(
      {
        id: 'country-boundaries',
        source: {
          type: 'vector',
          url: 'mapbox://mapbox.country-boundaries-v1',
        },
        'source-layer': 'country_boundaries',
        type: 'fill',
        paint: {
          'fill-color': '#8B008B',
          'fill-opacity': 0.8,
        },
      },
      'country-label'
    );

    this.map.setFilter('country-boundaries', [
      "in",
      "iso_3166_1_alpha_3",
       code
    ]);

    //This is very nice information about polygon coordinates,
    //Please, don't delete it!

    // map.on('load', () => {
    //   // Add a data source containing GeoJSON data.
    //   map.addSource('maine', {
    //   'type': 'geojson',
    //   'data': {
    //   'type': 'Feature',
    //   'geometry': {
    //   'type': 'Polygon',
    //   // These coordinates outline Maine.
    //   'coordinates': [
    //   [
    //   [-67.13734, 45.13745],
    //   [-66.96466, 44.8097],
    //   [-68.03252, 44.3252],
    //   [-69.06, 43.98],
    //   [-70.11617, 43.68405],
    //   [-70.64573, 43.09008],
    //   [-70.75102, 43.08003],
    //   [-70.79761, 43.21973],
    //   [-70.98176, 43.36789],
    //   [-70.94416, 43.46633],
    //   [-71.08482, 45.30524],
    //   [-70.66002, 45.46022],
    //   [-70.30495, 45.91479],
    //   [-70.00014, 46.69317],
    //   [-69.23708, 47.44777],
    //   [-68.90478, 47.18479],
    //   [-68.2343, 47.35462],
    //   [-67.79035, 47.06624],
    //   [-67.79141, 45.70258],
    //   [-67.13734, 45.13745]
    //   ]
    //   ]
    //   }
    //   }
    //   });

    //   // Add a new layer to visualize the polygon.
    //   map.addLayer({
    //   'id': 'maine',
    //   'type': 'fill',
    //   'source': 'maine', // reference the data source
    //   'layout': {},
    //   'paint': {
    //   'fill-color': '#46261E', // blue color fill
    //   'fill-opacity': 0.5
    //   }
    //   });
    //   // Add a black outline around the polygon.
    //   map.addLayer({
    //   'id': 'outline',
    //   'type': 'line',
    //   'source': 'maine',
    //   'layout': {},
    //   'paint': {
    //   'line-color': '#000',
    //   'line-width': 2
    //   }
    //   });




    });








  }

  disconnect() {
    this.map.remove()
  }

}
