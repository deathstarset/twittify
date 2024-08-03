import { IsEmail, IsEnum, IsNotEmpty, IsString } from 'class-validator';
import { ProviderType } from '../entities/user.entity';

export class CreateUserDto {
  @IsNotEmpty()
  @IsString()
  name: string;
  @IsNotEmpty()
  @IsEmail()
  email: string;
  @IsNotEmpty()
  @IsString()
  username: string;

  @IsEnum(ProviderType)
  provider: ProviderType;

  @IsNotEmpty()
  @IsString()
  password: string;
}

export type AddUser = {
  name: string;
  email: string;
  username: string;
  password?: string;
  provider: ProviderType;
};
