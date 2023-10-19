import { Component } from '@angular/core';


export interface Alumno {
  nombre: string;
  apellidos: string;
  id: number;
  edad: number;
  sexo: 'H' | 'M';
  modulos: Modulo[];
  tipoMatricula: 'completa' | 'parcial';
}

export interface Modulo {
  nombre: string;
  horas: number;
}

const ALUMNOS: Alumno[] = [
  {
    nombre: 'Alejandro',
    apellidos: 'Prieto',
    id: 1,
    edad: 34,
    sexo: 'H',
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
    sexo: 'H',
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
    sexo: 'M',
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

  displayedColumns: string[] = ['nombre', 'apellidos', 'id', 'edad', 'sexo', 'modulos', 'tipoMatricula'];
  UserComponent = ALUMNOS;

}