import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
} from '@nestjs/common';
import { UserService } from './user.service';
import { CreateUserDto } from './dto/create-user.dto';
import { UpdateUserDto } from './dto/update-user.dto';

@Controller('user')
export class UserController {
  constructor(private readonly userService: UserService) {}

  @Post()
  async create(@Body() createUserDto: CreateUserDto) {
    const user = await this.userService.addUser(createUserDto);
    return { user };
  }

  @Get()
  async findAll() {
    const users = await this.userService.findAllUsers();
    return { users };
  }

  @Get(':id')
  async findOne(@Param('id') id: string) {
    const user = await this.userService.findOneUser(id);
    return { user };
  }

  @Patch(':id')
  async update(@Param('id') id: string, @Body() updateUserDto: UpdateUserDto) {
    const user = await this.userService.editUser(id, updateUserDto);
    return { user };
  }

  @Delete(':id')
  async remove(@Param('id') id: string) {
    const user = await this.userService.removeUser(id);
    return { user };
  }
}
