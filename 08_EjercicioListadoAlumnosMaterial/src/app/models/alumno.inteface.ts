export enum Sex {
    Male,
    Female
}

export interface Alumno {
    nombre: string;
    apellidos: string;
    id: number;
    edad: number;
    sexo: Sex;
    modulos: Modulo[];
    tipoMatricula: 'completa' | 'parcial';
}

export interface Modulo {
    nombre: string;
    horas: number;
}