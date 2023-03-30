'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "3d580c8884ce2e572a5ba7fd382bd4a3",
"index.html": "e1097472b00e623f37af902c85259a81",
"/": "e1097472b00e623f37af902c85259a81",
"main.dart.js": "0b67b7d23b2cefdcee18a5b2e31d4368",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"favicon.png": "a22a8966329453556ee83e74e0eb2875",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "003269ac4e3cf7f7f1c9149748b4aef9",
"assets/AssetManifest.json": "c4b877c05417badb729ebcc79a24a1c8",
"assets/NOTICES": "2ccded95c32b5167bd75fe7619d1e9c3",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/shaders/ink_sparkle.frag": "9dd4ecaf5e3314e90c1b18880fd3eef1",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/assets/svg/Liberty%2520Pay%2520logo%25202%25201.svg": "3d8c435c9b8c39e0c3357402ee1bb67d",
"assets/assets/svg/bxl_flutter.svg": "f165f265ed6586c9940d43ba52e7a191",
"assets/assets/svg/simple-icons_flutter.svg": "8edc60584aec061cc81db875b124669d",
"assets/assets/svg/contact_github%25201.svg": "c6452740001da0293f85d1e7b42d4e48",
"assets/assets/svg/ic_round-apple.svg": "2ee76be96179588d516907a57fba0570",
"assets/assets/svg/ic_sharp-android.svg": "82fa21ddf2c2f7cf1a47f5a59d3f6237",
"assets/assets/svg/Icon.svg": "ca0e2b8380163493470464dbe3dbcc55",
"assets/assets/svg/mdi_git.svg": "1feadf422d87df01c084719ebea09c2a",
"assets/assets/svg/contact_mail%25201.svg": "5ac646aad87255b05040470f2aecc330",
"assets/assets/svg/akar-icons_figma-fill.svg": "f1ac50e610bacef15646243a156669fb",
"assets/assets/svg/Logo%2520Int.svg": "03c41f4b96d01e226ab5e4a3cd4b3832",
"assets/assets/svg/Flutter%2520Code.svg": "12c2014b557e58801268c53f9168f39a",
"assets/assets/png/SmartParcel%25204.png": "8fa494d1d91fd4edf0fea83efadbcd4e",
"assets/assets/png/Beeep%25203.png": "2086af951dc8032efbb50dc9c63a9a7a",
"assets/assets/png/SmartParcel%25203.png": "769484b138cb6c529bf15d6a6798f26e",
"assets/assets/png/smart_parcel_banner.png": "08ff1b1f74e4ace611a647ffa770bcaf",
"assets/assets/png/Beeep%25204.png": "d4a4eee48d45163d028ac5a7c4e70dd2",
"assets/assets/png/LibertyPay%25203.png": "6eb753edaa5676c19405f2cc22d74b71",
"assets/assets/png/WhisperSms%25203.png": "cc1cc22e57bc63288e0d04ac67edfa73",
"assets/assets/png/LibertyPay%25204.png": "e6cd388308d4c65384e87b642d4e27c8",
"assets/assets/png/liberty_banner.png": "69ea51f5cfde2662eefb76b45674a732",
"assets/assets/png/WhisperSms%25204.png": "737695a37c655afda7666754027f796c",
"assets/assets/png/whisper_banner.png": "df9deb7cc6a06e01fb31473fc62720c8",
"assets/assets/png/beeep_banner.png": "f25ff94fb01971783b502aab148ebe9b",
"canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
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
