export interface TopLevel {
  count: number;
  next: string;
  previous: null;
  results: vehicles[];
}

export interface vehicles {
  name: string;
  url: string;
}
