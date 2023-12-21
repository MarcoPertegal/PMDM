import { Component, OnInit } from '@angular/core';
import { PlayerService } from '../../services/player.service';
import { Router } from '@angular/router';
import { GameService } from '../../services/game.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrl: './home.component.css'
})
export class HomeComponent implements OnInit {
  name: string = '';
  games!: false;

  constructor(public playerService: PlayerService, private router: Router, public gameService: GameService) { }

  ngOnInit(): void {
    this.gameService.findGames();
  }

  addPlayer() {
    if (this.games) {
      this.playerService.createPlayer(this.name);
      this.router.navigateByUrl('/table');
    }

  }

  //¿existe empi game? si, me uno como player 2
  //no, creo una nueva y me uno como player 1

}
