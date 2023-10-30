import { Component, Input } from '@angular/core';
import { Berry } from 'src/app/models/berries-list.interface';

@Component({
  selector: 'app-berries-item',
  templateUrl: './berries-item.component.html',
  styleUrls: ['./berries-item.component.css']
})
export class BerriesItemComponent {
  @Input() berry!: Berry;

}
