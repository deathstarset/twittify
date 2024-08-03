import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { UserModule } from './user/user.module';
import { TypeOrmModule } from '@nestjs/typeorm';
import { User } from './user/entities/user.entity';
import 'dotenv/config';
import { AuthModule } from './auth/auth.module';
import { PassportModule } from '@nestjs/passport';
import { ProfileModule } from './profile/profile.module';
import { Session } from './Session';

@Module({
  imports: [
    UserModule,
    AuthModule,
    TypeOrmModule.forRoot({
      type: 'postgres',
      database: process.env.POSTGRES_DB,
      username: process.env.POSTGRES_USER,
      password: process.env.POSTGRES_PASSWORD,
      entities: [User, Session],
      synchronize: true,
    }),
    PassportModule.register({ session: true }),
    ProfileModule,
    TypeOrmModule.forFeature([Session]),
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
