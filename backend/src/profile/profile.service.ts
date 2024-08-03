import { Injectable } from '@nestjs/common';
import { UserService } from 'src/user/user.service';

@Injectable()
export class ProfileService {
  constructor(private readonly userService: UserService) {}

  findProfileByID(id: string) {
    const user = this.userService.findOneUser(id);
    return user;
  }

  removeProfile(id: string) {}

  editProfile(id: string) {}
}
