import { Injectable } from '@angular/core';
import { AngularFireStorage, AngularFireUploadTask } from '@angular/fire/compat/storage';
import { Observable, finalize, of } from 'rxjs';
import { AuthService } from './auth.service';

@Injectable({
  providedIn: 'root'
})
export class FirestorageService {
  path = '';
  task!: AngularFireUploadTask;
  uploadProgress = new Observable();
  downloadURL = of('');
  constructor(private auth: AuthService, public firestorage: AngularFireStorage) { }

  upload(event: any) {
    console.log('event: ', event);

    let ext = '.jpg';
    if (event.target.files[0].type === 'image/png') {
      ext = '.png';
    }

    const path = this.path + this.auth.authUser.uid + ext;
    const ref = this.firestorage.ref(path);
    this.task = this.firestorage.upload(path, event.target.files[0]);
    this.uploadProgress = this.task.percentageChanges();
    this.task.snapshotChanges().pipe(finalize(() => {
      this.downloadURL = ref.getDownloadURL();
      console.log('this.downloadURL: ', this.downloadURL);

    })).subscribe();
  }
}
