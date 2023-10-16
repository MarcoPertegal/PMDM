import { Component } from '@angular/core';

@Component({
  selector: 'app-calculadora-component',
  templateUrl: './calculadora-component.component.html',
  styleUrls: ['./calculadora-component.component.css']
})
export class CalculadoraComponentComponent {
  operacion = ''; // Variable para almacenar la operación actual.

  agregarNumero(numero: string) {
    this.operacion += numero; // Agregar el número a la operación actual.
  }
  calcular() {

    // Dividir la operación en sus componentes (números y operadores).
    if (this.operacion.includes('+')) {
      const [num1, num2] = this.operacion.split('+').map(Number);
      this.operacion = (num1 + num2).toString();
    } else if (this.operacion.includes('-')) {
      const [num1, num2] = this.operacion.split('-').map(Number);
      this.operacion = (num1 - num2).toString();
    } else if (this.operacion.includes('*')) {
      const [num1, num2] = this.operacion.split('*').map(Number);
      this.operacion = (num1 * num2).toString();
    } else if (this.operacion.includes('/')) {
      const [num1, num2] = this.operacion.split('/').map(Number);
      if (num2 === 0) {
        this.operacion = 'Error: División por cero';
      } else {
        this.operacion = (num1 / num2).toString();
      }
    }
  }

  borrar() {
    this.operacion = '';
  }
}
