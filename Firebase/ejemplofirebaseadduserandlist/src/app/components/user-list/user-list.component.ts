import { Component, OnInit } from '@angular/core';
import { UserService } from '../../services/user.service';

@Component({
  selector: 'app-user-list',
  templateUrl: './user-list.component.html',
  styleUrl: './user-list.component.css'
})
export class UserListComponent /*implements OnInit*/ {
  /*
  users: Array<{ id: string, data: any }> = [];

  constructor(public userService: UserService) { }

  ngOnInit() {
    this.listUsers();
  }

  async listUsers() {
    this.users = await this.userService.getUsers();
  }*/
}
