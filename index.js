const tracer = require('dd-trace').init()

const { createLogger, format, transports } = require('winston');

const httpTransportOptions = {
    host: 'http-intake.logs.ddog-gov.com',
    path: '/api/v2/logs?dd-api-key=5f48cbf68f65f880f38f655bed58fe26&ddsource=nodejs&service=datadog-ci',
    ssl: true
};

const logger = createLogger({
    level: 'info',
    exitOnError: false,
    format: format.json(),
    transports: [
        new transports.Http(httpTransportOptions),
    ],
});

module.exports = logger;

// Example logs
logger.log('info', 'Hello simple log!111');
logger.info('Hello log with metas', { color: 'blue' });
console.log("Hello world.")