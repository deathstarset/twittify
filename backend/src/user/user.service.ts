import { Injectable } from '@nestjs/common';
import { CreateUserDto } from './dto/create-user.dto';
import { UpdateUserDto } from './dto/update-user.dto';
import { Repository } from 'typeorm';
import { User } from './entities/user.entity';
import { InjectRepository } from '@nestjs/typeorm';

@Injectable()
export class UserService {
  constructor(
    @InjectRepository(User) private usersRepository: Repository<User>,
  ) {}

  addUser(createUserDto: CreateUserDto) {
    const user = this.usersRepository.create(createUserDto);
    return this.usersRepository.save(user);
  }

  findAllUsers() {
    const users = this.usersRepository.find();
    return users;
  }

  findOneUser(id: string) {
    const user = this.usersRepository.findOneBy({ id: id });
    return user;
  }

  async editUser(id: string, updateUserDto: UpdateUserDto) {
    const user = await this.findOneUser(id);
    return this.usersRepository.save({ ...user, ...updateUserDto });
  }

  async removeUser(id: string) {
    const user = await this.findOneUser(id);
    return this.usersRepository.remove(user);
  }
}
