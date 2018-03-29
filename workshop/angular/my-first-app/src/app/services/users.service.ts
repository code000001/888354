import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import 'rxjs/add/operator/map';
@Injectable()
export class UsersService {
  constructor(public http: Http) { }
  getUserList(){   
    let url = "https://jsonplaceholder.typicode.com/users";
    return  this.http.get(url).map((res)=> res.json());  
  }
}
