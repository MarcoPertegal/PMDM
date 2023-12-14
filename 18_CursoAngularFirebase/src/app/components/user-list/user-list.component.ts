import { Component } from '@angular/core';
import { AuthService } from '../../services/auth.service';

@Component({
  selector: 'app-user-list',
  templateUrl: './user-list.component.html',
  styleUrl: './user-list.component.css'
})
export class UserListComponent {
  usersList: any[] = [];

  constructor(public auth: AuthService) { }

  ngOnInit() {
    this.auth.getUsers().subscribe(users => {
      this.usersList = [];
      users.forEach(u => {
        const user: any = u.payload.val();
        user.key = u.key;
        this.usersList.push(user);
      })
    })
  }
}
