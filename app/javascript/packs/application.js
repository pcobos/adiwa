import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initUpdateNavbarOnScroll } from '../components/navbar';
import { initMapbox } from '../plugins/init_mapbox';
import { gallery } from '../components/gallery';

initUpdateNavbarOnScroll();

import { initSearchbar } from '../components/init_searchbar';
initSearchbar()

import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

