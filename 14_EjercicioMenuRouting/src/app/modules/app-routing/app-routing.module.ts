import { NgModule } from '@angular/core';
import { Route, RouterModule, Routes } from '@angular/router';
import { PokemonListComponent } from 'src/app/components/pokemon-list/pokemon-list.component';
import { BerriesListComponent } from 'src/app/components/berries-list/berries-list.component';
import { PageNotFoundComponent } from 'src/app/components/page-not-found/page-not-found.component';

const routes: Routes = [
  { path: 'pokemon', component: PokemonListComponent },
  { path: 'berries', component: BerriesListComponent },
  { path: '', pathMatch: 'full', redirectTo: '/pokemon' },
  { path: '**', component: PageNotFoundComponent },
];


@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
