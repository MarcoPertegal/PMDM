import { Component } from '@angular/core';

@Component({
  selector: 'app-formulario-login',
  templateUrl: './formulario-login.component.html',
  styleUrls: ['./formulario-login.component.css']
})
export class FormularioLoginComponent {
  tlf: string = '';
  nombre: string = '';
  apellidos: string = '';
  nif: string = '';
  email: string = '';
  sexo: string = '';
  conocido: string = '';
  passw: string = '';
  passwConf: string = '';


  enviar() {
    console.log(this.tlf, this.nombre, this.apellidos, this.nif, this.email, this.sexo, this.conocido, this.passw, this.passwConf);
  }
}
