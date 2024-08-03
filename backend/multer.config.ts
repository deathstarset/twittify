import { diskStorage } from 'multer';
import { v4 as uuid } from 'uuid';
import * as fs from 'fs';

export const multerConfig = {
  storage: diskStorage({
    destination: (req, file, cb) => {
      const uploadDir = 'uploads/profile';
      if (!fs.existsSync(uploadDir)) {
        fs.mkdirSync(uploadDir, { recursive: true });
      }
      cb(null, uploadDir);
    },
    filename: (req, file, cb) => {
      const fileName = `${uuid()}.${file.mimetype.split('/')[1]}`;
      cb(null, fileName);
    },
  }),
};
