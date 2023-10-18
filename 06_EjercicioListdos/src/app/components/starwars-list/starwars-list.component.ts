import { Component } from '@angular/core';
import { vehicles } from 'src/app/models/starwars.interface.ts/starwars.interface';
const VEHICLES: vehicles[] = [
  {
    name: "Sand Crawler",
    url: "https://swapi.dev/api/vehicles/4/"
  },
  {
    name: "T-16 skyhopper",
    url: "https://swapi.dev/api/vehicles/6/"
  },
  {
    name: "X-34 landspeeder",
    url: "https://swapi.dev/api/vehicles/7/"
  },
  {
    name: "TIE/LN starfighter",
    url: "https://swapi.dev/api/vehicles/8/"
  },
  {
    name: "Snowspeeder",
    url: "https://swapi.dev/api/vehicles/14/"
  },
  {
    name: "TIE bombe",
    url: "https://swapi.dev/api/vehicles/16/"
  },
  {
    name: "AT-AT",
    url: "https://swapi.dev/api/vehicles/18/"
  },
  {
    name: "AT-ST",
    url: "https://swapi.dev/api/vehicles/19/"
  },
  {
    name: "Storm IV Twin-Pod cloud car",
    url: "https://swapi.dev/api/vehicles/20/"
  },
  {
    name: "Sail barge",
    url: "https://swapi.dev/api/vehicles/24/"
  }
];

@Component({
  selector: 'app-starwars-list',
  templateUrl: './starwars-list.component.html',
  styleUrls: ['./starwars-list.component.css']
})
export class StarwarsListComponent {
  starwarsList = VEHICLES;



  public getUrl(url: string) {
    var urlPhoto = url.split('/').reverse()[1];
    return "https://starwars-visualguide.com/assets/img/vehicles/" + urlPhoto + ".jpg";
  }

}
