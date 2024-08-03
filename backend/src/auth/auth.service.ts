import { Injectable } from '@nestjs/common';
import { UserDetails } from './dto/auth.dto';
import { UserService } from 'src/user/user.service';
import { ProviderType } from 'src/user/entities/user.entity';

@Injectable()
export class AuthService {
  constructor(private userService: UserService) {}

  async signIn(userDetails: UserDetails) {
    const user = await this.userService.findUserByEmail(userDetails.email);
    if (!user) {
      return this.registerUser(userDetails);
    }
    return user;
  }

  async registerUser(userDetails: UserDetails) {
    const newUser = await this.userService.addUser({
      provider: ProviderType.GOOGLE,
      email: userDetails.email,
      name: userDetails.name,
      username: this.genUsername(userDetails.email),
    });
    return newUser;
  }

  genUsername(email: string) {
    return email.split('@')[0];
  }
}
