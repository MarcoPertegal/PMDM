import { Component, EventEmitter, Input, Output } from '@angular/core';
import { People } from 'src/app/models/people-list.interface';

@Component({
  selector: 'app-people-item',
  templateUrl: './people-item.component.html',
  styleUrls: ['./people-item.component.css']
})
export class PeopleItemComponent {
  @Input() people!: People;
  @Output() peopleClick = new EventEmitter<string>();
  getPeopleImage() {
    const peopleId = this.people.url.split('/')[5];
    return `https://starwars-visualguide.com/assets/img/characters/${peopleId}.jpg`;
  }

  viewPeopleDetail() {
    this.peopleClick.emit(this.people.name);
  }

}
