import {cpSync,mkdirSync} from 'node:fs';
mkdirSync(new URL('../docs/',import.meta.url),{recursive:true});
cpSync(new URL('../public/',import.meta.url),new URL('../docs/',import.meta.url),{recursive:true});
console.log('GitHub Pages files updated in docs/');
