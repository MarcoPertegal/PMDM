import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { PageHomeComponent } from '../ui/page-home/page-home.component';
import { PageNotFoundComponent } from '../ui/page-not-found/page-not-found.component';

const routes: Routes = [
  { path: 'Movies', component: PageHomeComponent },
  { path: '', pathMatch: 'full', redirectTo: '' },
  { path: '**', component: PageNotFoundComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
