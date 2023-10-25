import { Component, Input } from '@angular/core';
import { Vehicle } from 'src/app/models/vehicle-list.interface';

@Component({
  selector: 'app-vehicle-item',
  templateUrl: './vehicle-item.component.html',
  styleUrls: ['./vehicle-item.component.css']
})
export class VehicleItemComponent {
  @Input() vehicle!: Vehicle;
  getVehicleImage() {
    const vehicleId = this.vehicle.url.split('/')[5];
    return `https://starwars-visualguide.com/assets/img/vehicles/${vehicleId}.jpg`;
  }

}
