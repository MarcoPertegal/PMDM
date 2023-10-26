import { Component, EventEmitter, Input, Output } from '@angular/core';
import { People } from 'src/app/models/people-list.interface';

@Component({
  selector: 'app-people-item',
  templateUrl: './people-item.component.html',
  styleUrls: ['./people-item.component.css']
})
export class PeopleItemComponent {

  //este es el objeto people que recibe del componente padre
  @Input() people!: People;

  //este obejto es un evento que se pasa del componete hijo al padre usando @Output y Creando un nuevo 
  //EventEmitter se usará cuando llamemos al compoenente hijo app-people-item 
  //dentro del componente padre para ayudarnos a abrir el modal
  @Output() peopleClick = new EventEmitter();

  //este metodo se usa para colocar la imagen
  getPeopleImage() {
    const peopleId = this.people.url.split('/')[5];
    return `https://starwars-visualguide.com/assets/img/characters/${peopleId}.jpg`;
  }

  //este es el metodo que se llama al pulsar el boton de la card haciendo click, como peopleClick es 
  //un objeto tipo EventEmiter que emite un evento podemo llamar al metodo .emit()
  viewPeopleDetail() {
    this.peopleClick.emit();
  }


  //@Output() peopleClick = new EventEmitter<People>();
  /*
  viewPeopleDetail() {
    this.peopleClick.emit(this.people);
  }
  */

}
