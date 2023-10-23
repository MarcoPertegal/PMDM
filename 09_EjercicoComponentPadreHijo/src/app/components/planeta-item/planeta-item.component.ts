import { Component, Input } from '@angular/core';
import { Planeta } from 'src/app/models/planeta-list.interface';

@Component({
  selector: 'app-planeta-item',
  templateUrl: './planeta-item.component.html',
  styleUrls: ['./planeta-item.component.css']
})
export class PlanetaItemComponent {
  @Input() planeta!: Planeta; //aqui lo que esta diciendo esque la variable planeta le va a venir del pladre con @Input, el ! indica wu puede ser nulo y Planeta
  //indica que la variable es de tipo planeta por eso lo estamos importando
}
