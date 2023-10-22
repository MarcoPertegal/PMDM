import { Component } from '@angular/core';
import { Sex, Alumno } from 'src/app/models/alumno.inteface';

const ALUMNOS: Alumno[] = [
  {
    nombre: 'Alejandro',
    apellidos: 'Prieto',
    id: 1,
    edad: 34,
    sexo: Sex.Male,
    modulos: [
      {
        nombre: 'Módulo A',
        horas: 60
      },
      {
        nombre: 'Módulo B',
        horas: 40
      },
    ],
    tipoMatricula: 'completa'
  },
  {
    nombre: 'Alex',
    apellidos: 'García',
    id: 2,
    edad: 14,
    sexo: Sex.Male,
    modulos: [
      {
        nombre: 'Módulo A',
        horas: 60
      },
      {
        nombre: 'Módulo B',
        horas: 40
      },
    ],
    tipoMatricula: 'completa',
  },
  {
    nombre: 'María',
    apellidos: 'Sanchez',
    id: 3,
    edad: 19,
    sexo: Sex.Female,
    modulos: [
      {
        nombre: 'Módulo A',
        horas: 60
      },
      {
        nombre: 'Módulo B',
        horas: 40
      },
    ],
    tipoMatricula: 'parcial',
  }
];

@Component({
  selector: 'app-user',
  templateUrl: './user.component.html',
  styleUrls: ['./user.component.css']
})
export class UserComponent {

  displayedColumns: string[] = ['id', 'nombre', 'apellidos', 'modulos'];
  alumnosList = ALUMNOS; //se le asigna alumnos para recorrerlos en la tabla he ir pintnado datos

  checkColumnId: boolean = true;
  checkColumnName: boolean = true;
  checkColumnSurname: boolean = true;
  checkColumnSubjects: boolean = true;

  checkboxClicked() {
    this.displayedColumns = []; //aqui se limpia el array
    if (this.checkColumnId) { //Aqui se comprueba si es true y si es true se pushea al array
      this.displayedColumns.push('id');
    }
    if (this.checkColumnName) {
      this.displayedColumns.push('nombre');
    }
    if (this.checkColumnSurname) {
      this.displayedColumns.push('apellidos');
    }
    if (this.checkColumnSubjects) {
      this.displayedColumns.push('modulos');
    }
  }
}