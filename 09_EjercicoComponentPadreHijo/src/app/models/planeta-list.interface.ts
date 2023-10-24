//A LA INTERFAZ hay que llamarla con -Response detrás
// results: Planeta[]; results no se le puede cambiar el nombre
export interface StarwarsListResponse {
    count: number;
    next: string;
    previous: null;
    results: Planeta[];
}

export interface Planeta {
    name: string;
    rotation_period: string;
    orbital_period: string;
    diameter: string;
    climate: string;
    gravity: string;
    terrain: string;
    surface_water: string;
    population: string;
    residents: string[];
    films: string[];
    created: string;
    edited: string;
    url: string;
}
