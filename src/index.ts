import { registerPlugin } from "@capacitor/core";
import { SavePasswordPlugin } from "./definitions";

const SavePassword = registerPlugin<SavePasswordPlugin>("SavePassword");

export * from "./definitions";
export { SavePassword };
