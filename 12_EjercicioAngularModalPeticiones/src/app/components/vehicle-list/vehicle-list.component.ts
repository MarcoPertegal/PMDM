import { Component } from '@angular/core';
import { Vehicle } from 'src/app/models/vehicle-list.interface';
import { VehicleService } from 'src/app/services/vehicle.service';

@Component({
  selector: 'app-vehicle-list',
  templateUrl: './vehicle-list.component.html',
  styleUrls: ['./vehicle-list.component.css']
})
export class VehicleListComponent {
  vehicleList: Vehicle[] = [];
  constructor(private vehicleService: VehicleService) { }

  ngOnInit(): void {
    this.vehicleService.getVehicleList().subscribe(resp => {
      this.vehicleList = resp.results;
    });
  }

}
