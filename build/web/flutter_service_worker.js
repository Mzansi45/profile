'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "ccbf824b3279fd36b685e91d1243a909",
"assets/AssetManifest.bin.json": "9aece0e170b18893ca0cfbbf5e9e57be",
"assets/AssetManifest.json": "7682833cd6336684f2410b7b7c60a784",
"assets/assets/icons/csharp.png": "d86edd7b6da8c50ec3efdc0665061a5d",
"assets/assets/icons/docker.png": "d6bb0f1bd0956a4e0927061ad290fde5",
"assets/assets/icons/flutter.png": "496166b5b52e02865c338bb52558e54e",
"assets/assets/icons/git.png": "b2f35ed198449c0573318583bbe5ebb1",
"assets/assets/icons/java.png": "ee486b5ef2a5123cec87654ab1cfdc00",
"assets/assets/icons/python.png": "85333030667c00acb9864298f7c6344a",
"assets/assets/icons/spring_boot.png": "a9779473c2018ecbbc3eb8ea43d1f4ca",
"assets/assets/icons/sql.png": "c54915e77b4288f2a1b135108db54006",
"assets/assets/icons/unity.png": "cb657f12f27575da787216ebe7df79f1",
"assets/assets/icons/web_dev.png": "99592b073012872fe6b84496dffe78a0",
"assets/assets/images/bg.png": "78602d9508b53ea212e86f5443c77e2e",
"assets/assets/images/software.png": "b42d01e19fcdd03673fcb90b73b120a2",
"assets/assets/lottie/animation1.json": "7d01ae8a861fd11b28382d9e8c5f30d7",
"assets/assets%255Cicons%255Ccsharp.png": "d86edd7b6da8c50ec3efdc0665061a5d",
"assets/assets%255Cicons%255Cdocker.png": "d6bb0f1bd0956a4e0927061ad290fde5",
"assets/assets%255Cicons%255Cflutter.png": "496166b5b52e02865c338bb52558e54e",
"assets/assets%255Cicons%255Cgit.png": "b2f35ed198449c0573318583bbe5ebb1",
"assets/assets%255Cicons%255Cjava.png": "ee486b5ef2a5123cec87654ab1cfdc00",
"assets/assets%255Cicons%255Cpython.png": "85333030667c00acb9864298f7c6344a",
"assets/assets%255Cicons%255Cspring_boot.png": "a9779473c2018ecbbc3eb8ea43d1f4ca",
"assets/assets%255Cicons%255Csql.png": "c54915e77b4288f2a1b135108db54006",
"assets/assets%255Cicons%255Cunity.png": "cb657f12f27575da787216ebe7df79f1",
"assets/assets%255Cicons%255Cweb_dev.png": "99592b073012872fe6b84496dffe78a0",
"assets/assets%255Cimages%255Cbg.png": "78602d9508b53ea212e86f5443c77e2e",
"assets/assets%255Cimages%255Csoftware.png": "b42d01e19fcdd03673fcb90b73b120a2",
"assets/assets%255Clottie%255Canimation1.json": "7d01ae8a861fd11b28382d9e8c5f30d7",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "a4b5cd1693a5e0e1041c64aada6696da",
"assets/NOTICES": "c2e9dd052ce67678a491be9febabf4f8",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "ce6d741e6d00b3fc5308f9ed560c7d68",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "42ef0121626aaf12f22238ed4bc8f4a7",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "4dcb6fad157f3481f935c3b19c095447",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "9d1057dc02e85f7c5e19a8726e255075",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"icons/Icon-192.png": "2ab4d6fc2e7f8f44c51ea01283a4df46",
"icons/Icon-512.png": "d6e06922ad5602d6dcc307b7a1b7efa9",
"icons/Icon-maskable-192.png": "2ab4d6fc2e7f8f44c51ea01283a4df46",
"icons/Icon-maskable-512.png": "d6e06922ad5602d6dcc307b7a1b7efa9",
"index.html": "92db7bb8e54bbc2b894cc1d0b61bd900",
"/": "92db7bb8e54bbc2b894cc1d0b61bd900",
"main.dart.js": "7ab45887891fccef0832a9e9d6a0b30b",
"manifest.json": "4137147246a11ba2148318bc696c4202",
"version.json": "ed4196a263a7919322bbf877a1c4ca63"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
