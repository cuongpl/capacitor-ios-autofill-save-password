export interface SavePasswordPlugin {
  promptDialog(options: Options): Promise<void>;
}

export interface Options {
  username: string;
  password: string;
}
