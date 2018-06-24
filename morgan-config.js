import not from 'node-notifier';
import chalk from 'chalk'
import { join } from 'path';

export const morgan_config = morgan(function (tokens, req, res) {
  not.notify({
    title: `💻 [${require('./package.json').name}]`,
    message: `⚙️ ${tokens.method(req, res)} ${tokens.status(req, res)} ${tokens.url(req, res)} ${tokens['response-time'](req, res) + ' ms'}`,
    icon: join(__dirname, 'favicon.png'),
    sound: false
  });
  return [
    chalk.hex('#ff4757').bold('⚙️  Morgan --> '),
    chalk.hex('#34ace0').bold(tokens.method(req, res)),
    //chalk.yellow.bold(tokens.status(req, res)),
    tokens.status(req, res) >= 100 && tokens.status(req, res) < 200 ? chalk.cyan.bold(tokens.status(req, res))
      : tokens.status(req, res) >= 200 && tokens.status(req, res) < 300 ? chalk.green.bold(tokens.status(req, res))
        : '',
    chalk.hex('#ff5252').bold(tokens.url(req, res)),
    chalk.hex('#2ed573').bold(tokens['response-time'](req, res) + ' ms'),
    // chalk.hex('#f78fb3').bold('@ ' + tokens.date(req, res)),
    // chalk.yellow(tokens['remote-addr'](req, res)),
    // chalk.hex('#fffa65').bold('from ' + tokens.referrer(req, res)),
    // chalk.hex('#1e90ff')(tokens['user-agent'](req, res))      
  ].join(' ');
});

//instance of express() = app
//to use morgan
app.use(morgan_config);