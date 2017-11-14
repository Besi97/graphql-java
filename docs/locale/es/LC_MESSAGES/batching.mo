��          �               \  k   ]  �  �  �   k  (   c  �   �  �   s    -  �   H  �   �    �  �   �	  #  i
     �  �   �  �   ^  �   �     �    �     �  �  �  k   R  �  �  �   `  (   X  �   �  �   h    "  �   =  �   �    �  �   �  #  ^     �  �   �  �   S  �   �     �    �     �   A naive implementation would called a `DataFetcher` to retrieved a person object every time it was invoked. As `graphql` descends each level of the query ( eg as it processes `hero` and then `friends` and then for each their `friends`), the data loader is called to "promise" to deliver a person object.  At each level `dataloader.dispatch()` will be called to fire off the batch requests for that part of the query. With caching turned on (the default) then any previously returned person will be returned as is for no cost. But if you are doing per request data loaders then creating a new set of ``GraphQL`` and ``DataLoader`` objects per request is super cheap.  Its the ``GraphQLSchema`` creation that can be expensive, especially if you are using graphql IDL parsing. Here is how you might put this in place: If you are serving web requests then the data can be specific to the user requesting it. If you have user specific data then you will not want to cache data meant for user A to then later give it to user B in a subsequent request. If you are using ``graphql``, you are likely to making queries on a graph of data (surprise surprise).  But its easy to implement inefficient code with naive loading of a graph of data. If you use capabilities like `java.util.concurrent.CompletableFuture.supplyAsync()` then you can make it even more efficient by making the the remote calls asynchronous to the rest of the query.  This will make it even more timely since multiple calls can happen at once if need be. If your data can be shared across web requests then you might want to scope your data loaders so they survive longer than the web request say. Imagine we have the StarWars query outlined below.  It asks us to find a hero and their friend's names and their friend's friend's names.  It is likely that many of these people will be friends in common. In the above example there are only *5* unique people mentioned but with caching and batching retrieval in place their will be only *3* calls to the batch loader function.  *3* calls over the network or to a database is much better than *15* calls you will agree. In this case it would be *15* calls over the network.  Even though the group of people have a lot of common friends. With `dataloader` you can make the `graphql` query much more efficient. One thing to note is the above only works if you use `DataLoaderDispatcherInstrumentation` which makes sure `dataLoader.dispatch()` is called.  If this was not in place, then all the promises to data will never be dispatched ot the batch loader function and hence nothing would ever resolve. Per Request Data Loaders Structure your code so that the schema is statically held, perhaps in a static variable or in a singleton IoC component but build out a new ``GraphQL`` set of objects on each request. The result of this query is displayed below. You can see that Han, Leia, Luke and R2-D2 are a tight knit bunch of friends and share many friends in common. The scope of your DataLoader instances is important. You might want to create them per web request to ensure data is only cached within that web request and no more. Using Dataloader Using ``java-dataloader`` will help you to make this a more efficient process by both caching and batching requests for that graph of data items.  If ``dataloader`` has seen a data item before, it will have cached the value and will return it without having to ask for it again. ``` Project-Id-Version: graphql-java current
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-11-11 19:21+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: es
Language-Team: es <LL@li.org>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.5.1
 A naive implementation would called a `DataFetcher` to retrieved a person object every time it was invoked. As `graphql` descends each level of the query ( eg as it processes `hero` and then `friends` and then for each their `friends`), the data loader is called to "promise" to deliver a person object.  At each level `dataloader.dispatch()` will be called to fire off the batch requests for that part of the query. With caching turned on (the default) then any previously returned person will be returned as is for no cost. But if you are doing per request data loaders then creating a new set of ``GraphQL`` and ``DataLoader`` objects per request is super cheap.  Its the ``GraphQLSchema`` creation that can be expensive, especially if you are using graphql IDL parsing. Here is how you might put this in place: If you are serving web requests then the data can be specific to the user requesting it. If you have user specific data then you will not want to cache data meant for user A to then later give it to user B in a subsequent request. If you are using ``graphql``, you are likely to making queries on a graph of data (surprise surprise).  But its easy to implement inefficient code with naive loading of a graph of data. If you use capabilities like `java.util.concurrent.CompletableFuture.supplyAsync()` then you can make it even more efficient by making the the remote calls asynchronous to the rest of the query.  This will make it even more timely since multiple calls can happen at once if need be. If your data can be shared across web requests then you might want to scope your data loaders so they survive longer than the web request say. Imagine we have the StarWars query outlined below.  It asks us to find a hero and their friend's names and their friend's friend's names.  It is likely that many of these people will be friends in common. In the above example there are only *5* unique people mentioned but with caching and batching retrieval in place their will be only *3* calls to the batch loader function.  *3* calls over the network or to a database is much better than *15* calls you will agree. In this case it would be *15* calls over the network.  Even though the group of people have a lot of common friends. With `dataloader` you can make the `graphql` query much more efficient. One thing to note is the above only works if you use `DataLoaderDispatcherInstrumentation` which makes sure `dataLoader.dispatch()` is called.  If this was not in place, then all the promises to data will never be dispatched ot the batch loader function and hence nothing would ever resolve. Per Request Data Loaders Structure your code so that the schema is statically held, perhaps in a static variable or in a singleton IoC component but build out a new ``GraphQL`` set of objects on each request. The result of this query is displayed below. You can see that Han, Leia, Luke and R2-D2 are a tight knit bunch of friends and share many friends in common. The scope of your DataLoader instances is important. You might want to create them per web request to ensure data is only cached within that web request and no more. Using Dataloader Using ``java-dataloader`` will help you to make this a more efficient process by both caching and batching requests for that graph of data items.  If ``dataloader`` has seen a data item before, it will have cached the value and will return it without having to ask for it again. ``` 