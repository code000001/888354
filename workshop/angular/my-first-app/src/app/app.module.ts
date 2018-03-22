import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { AppComponent } from './app.component';
import { ProfileComponent } from './components/profile/profile.component';
import { ProductComponent } from './components/product/product.component';
import { FormsModule } from '@angular/forms';
import { ProductsService } from './services/products.service';
import { HttpModule } from '@angular/http';
import { RouterModule,Routes } from '@angular/router';
const appRoutes:Routes = [  
  {path:"",component:ProfileComponent},  
  {path:"products",component:ProductComponent}
];

@NgModule({
  declarations: [
    AppComponent,
    ProfileComponent,
    ProductComponent
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpModule,    
    RouterModule.forRoot(appRoutes)  
  ],
  providers: [ProductsService],
  bootstrap: [AppComponent]
})
export class AppModule { }
