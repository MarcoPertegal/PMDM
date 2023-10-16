import { Component } from '@angular/core';

@Component({
  selector: 'app-calculadora-component',
  templateUrl: './calculadora-component.component.html',
  styleUrls: ['./calculadora-component.component.css']
})
export class CalculadoraComponentComponent {
  operacion = ''; // Variable para almacenar la operación actual.

  agregarNumero(numero: string) {
    this.operacion += numero; // Agregar el número a la operación actual lo concadena pq es un string.
  }
  calcular() {
    // Dividir la operación en sus componentes (números y operadores).
    //this.operacion.split('+') convierte en un array de dos elementos y .map(Number) transfomra el array
    //en dos numeros que se guardan en num1 y num2 se suman y se transforman a string y se vuelven a guardar 
    //como string en la variable this.operacion
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
