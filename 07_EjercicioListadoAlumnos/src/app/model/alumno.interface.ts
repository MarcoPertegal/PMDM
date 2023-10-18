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