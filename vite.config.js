import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';

export default defineConfig({
    plugins: [
        laravel({
            input: [
                'resources/css/app.css',
                'resources/css/product.css',
                'resources/css/bootstrap.min.css',
                'resources/js/app.js',
                'resources/js/bootstrap.bundle.min.js',
            ],
            refresh: true,
        }),
    ],
});
