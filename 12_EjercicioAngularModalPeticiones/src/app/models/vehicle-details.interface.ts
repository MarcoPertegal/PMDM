//hemos tenido que crear una interfaz para ver el details del modal, como la api de starwars es una mierda es la misma que la de un vehiculo normal
export interface ViewVehicleDetail {
    name: string;
    model: string;
    manufacturer: string;
    cost_in_credits: string;
    length: string;
    max_atmosphering_speed: string;
    crew: string;
    passengers: string;
    cargo_capacity: string;
    consumables: string;
    vehicle_class: string;
    pilots: string[];
    films: string[];
    created: string;
    edited: string;
    url: string;
}