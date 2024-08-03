import {
  Controller,
  Delete,
  Get,
  Param,
  Post,
  UseGuards,
  Req,
} from '@nestjs/common';
import { ProfileService } from './profile.service';
import { AuthGuard } from 'src/auth/auth.guard';
import { Request } from 'express';
import { User } from 'src/user/entities/user.entity';

@UseGuards(AuthGuard)
@Controller('profile')
export class ProfileController {
  constructor(private readonly profileService: ProfileService) {}

  @Get()
  async getProfile(@Req() request: Request) {
    const user = request.user as User;
    const profile = await this.profileService.findProfileByID(user.id);
    return { profile };
  }

  @Post(':id')
  updateProfile(@Param('id') id: string) {
    return { profile: {} };
  }

  @Delete(':id')
  deleteProfile() {
    return { message: 'Profile deleted succefully' };
  }
}
