import { Component } from '@angular/core';
import { Berry } from 'src/app/models/berries-list.interface';
import { BerryService } from 'src/app/services/berry.service';

@Component({
  selector: 'app-berries-list',
  templateUrl: './berries-list.component.html',
  styleUrls: ['./berries-list.component.css']
})
export class BerriesListComponent {
  berriesList: Berry[] = [];

  constructor(private berryService: BerryService) { }

  ngOnInit(): void {
    this.berryService.getBerryList().subscribe(resp => {
      this.berriesList = resp.results;
    })
  }
}
