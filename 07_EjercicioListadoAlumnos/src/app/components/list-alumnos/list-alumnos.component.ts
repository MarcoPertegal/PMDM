import { Component } from '@angular/core';
import { Alumno } from 'src/app/model/alumno.interface';

@Component({
  selector: 'app-list-alumnos',
  templateUrl: './list-alumnos.component.html',
  styleUrls: ['./list-alumnos.component.css']
})
export class ListAlumnosComponent {

  alumnos: Alumno[] = [
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

  obtenerIconoSexo(sexo: string) {
    if (sexo == 'H')
      return 'bi bi-gender-male';
    else
      return 'bi bi-gender-female';
  }
}
