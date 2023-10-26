import { Component, EventEmitter, Input, Output } from '@angular/core';
import { Vehicle } from 'src/app/models/vehicle-list.interface';

@Component({
  selector: 'app-vehicle-item',
  templateUrl: './vehicle-item.component.html',
  styleUrls: ['./vehicle-item.component.css']
})
export class VehicleItemComponent {
  @Input() vehicle!: Vehicle;
  //hay que poner que el eventEmitter de tipo String porque o que va a recibir en el metodo es un vehicle.url de tipo string 
  @Output() vehicleClick = new EventEmitter<string>();

  getVehicleImage() {
    const vehicleId = this.vehicle.url.split('/')[5];
    return `https://starwars-visualguide.com/assets/img/vehicles/${vehicleId}.jpg`;
  }

  //Le pasamos al emit la url para en el padre poner $event para capturar la url en el metodo de openModal
  viewVehicleDetail() {
    this.vehicleClick.emit(this.vehicle.url);
  }

}
