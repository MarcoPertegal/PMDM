import { NgModule } from '@angular/core';
import { BrowserModule, provideClientHydration } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { RouterModule } from '@angular/router';
import { AngularFireModule } from '@angular/fire/compat';
import { environment } from '../environments/environments';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { AngularFireStorageModule } from '@angular/fire/compat/storage';
import { FormsModule } from '@angular/forms';

import { AngularFireAuthModule } from '@angular/fire/compat/auth';
import { AngularFireDatabaseModule } from '@angular/fire/compat/database';
import { UserListComponent } from './components/user-list/user-list.component';

@NgModule({
  declarations: [
    AppComponent,
    UserListComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    NgbModule,
    AngularFireModule.initializeApp(environment.firebaseConfig),
    AngularFireAuthModule,
    BrowserAnimationsModule,
    AngularFireStorageModule,
    AngularFireDatabaseModule,
    RouterModule,
    FormsModule
  ],
  providers: [
    provideClientHydration()
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
