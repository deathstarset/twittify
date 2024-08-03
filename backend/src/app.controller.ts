import {
  Controller,
  Post,
  UploadedFile,
  Get,
  Req,
  UseGuards,
} from '@nestjs/common';
import { AppService } from './app.service';
import { UseInterceptors } from '@nestjs/common';
import { FileInterceptor } from '@nestjs/platform-express';
import { multerConfig } from 'multer.config';
import { Request } from 'express';
import { AuthGuard } from './auth/auth.guard';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Post('upload')
  @UseInterceptors(FileInterceptor('picture', multerConfig))
  handleUpload(@UploadedFile() picture: Express.Multer.File) {
    console.log(picture);
  }

  @Get('protected')
  @UseGuards(AuthGuard)
  getHello(@Req() request: Request) {
    console.log(request.user);
    return { message: 'Hey' };
  }
}
