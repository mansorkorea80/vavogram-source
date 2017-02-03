.class public abstract Lorg/telegram/messenger/volley/Request;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/volley/Request$Priority;,
        Lorg/telegram/messenger/volley/Request$Method;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/telegram/messenger/volley/Request",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_PARAMS_ENCODING:Ljava/lang/String; = "UTF-8"


# instance fields
.field private mCacheEntry:Lorg/telegram/messenger/volley/Cache$Entry;

.field private mCanceled:Z

.field private final mDefaultTrafficStatsTag:I

.field private final mErrorListener:Lorg/telegram/messenger/volley/Response$ErrorListener;

.field private final mEventLog:Lorg/telegram/messenger/volley/VolleyLog$MarkerLog;

.field private final mMethod:I

.field private mRequestQueue:Lorg/telegram/messenger/volley/RequestQueue;

.field private mResponseDelivered:Z

.field private mRetryPolicy:Lorg/telegram/messenger/volley/RetryPolicy;

.field private mSequence:Ljava/lang/Integer;

.field private mShouldCache:Z

.field private mTag:Ljava/lang/Object;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/telegram/messenger/volley/Response$ErrorListener;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lorg/telegram/messenger/volley/VolleyLog$MarkerLog;->ENABLED:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/volley/VolleyLog$MarkerLog;

    invoke-direct {v0}, Lorg/telegram/messenger/volley/VolleyLog$MarkerLog;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/telegram/messenger/volley/Request;->mEventLog:Lorg/telegram/messenger/volley/VolleyLog$MarkerLog;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/volley/Request;->mShouldCache:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/volley/Request;->mCanceled:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/volley/Request;->mResponseDelivered:Z

    iput-object v1, p0, Lorg/telegram/messenger/volley/Request;->mCacheEntry:Lorg/telegram/messenger/volley/Cache$Entry;

    iput p1, p0, Lorg/telegram/messenger/volley/Request;->mMethod:I

    iput-object p2, p0, Lorg/telegram/messenger/volley/Request;->mUrl:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/volley/Request;->mErrorListener:Lorg/telegram/messenger/volley/Response$ErrorListener;

    new-instance v0, Lorg/telegram/messenger/volley/DefaultRetryPolicy;

    invoke-direct {v0}, Lorg/telegram/messenger/volley/DefaultRetryPolicy;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/volley/Request;->setRetryPolicy(Lorg/telegram/messenger/volley/RetryPolicy;)Lorg/telegram/messenger/volley/Request;

    invoke-static {p2}, Lorg/telegram/messenger/volley/Request;->findDefaultTrafficStatsTag(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/volley/Request;->mDefaultTrafficStatsTag:I

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/telegram/messenger/volley/Response$ErrorListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/telegram/messenger/volley/Request;-><init>(ILjava/lang/String;Lorg/telegram/messenger/volley/Response$ErrorListener;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/volley/Request;)Lorg/telegram/messenger/volley/VolleyLog$MarkerLog;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/volley/Request;->mEventLog:Lorg/telegram/messenger/volley/VolleyLog$MarkerLog;

    return-object v0
.end method

.method private encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Encoding not supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    return-object v3
.end method

.method private static findDefaultTrafficStatsTag(Ljava/lang/String;)I
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addMarker(Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lorg/telegram/messenger/volley/VolleyLog$MarkerLog;->ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/volley/Request;->mEventLog:Lorg/telegram/messenger/volley/VolleyLog$MarkerLog;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lorg/telegram/messenger/volley/VolleyLog$MarkerLog;->add(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/volley/Request;->mCanceled:Z

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/telegram/messenger/volley/Request;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/volley/Request;->compareTo(Lorg/telegram/messenger/volley/Request;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/telegram/messenger/volley/Request;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/volley/Request",
            "<TT;>;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/telegram/messenger/volley/Request;->getPriority()Lorg/telegram/messenger/volley/Request$Priority;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/messenger/volley/Request;->getPriority()Lorg/telegram/messenger/volley/Request$Priority;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/volley/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p1, Lorg/telegram/messenger/volley/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v2, v3

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Lorg/telegram/messenger/volley/Request$Priority;->ordinal()I

    move-result v2

    invoke-virtual {v0}, Lorg/telegram/messenger/volley/Request$Priority;->ordinal()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0
.end method

.method public deliverError(Lorg/telegram/messenger/volley/VolleyError;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/volley/Request;->mErrorListener:Lorg/telegram/messenger/volley/Response$ErrorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/volley/Request;->mErrorListener:Lorg/telegram/messenger/volley/Response$ErrorListener;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/volley/Response$ErrorListener;->onErrorResponse(Lorg/telegram/messenger/volley/VolleyError;)V

    :cond_0
    return-void
.end method

.method protected abstract deliverResponse(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method finish(Ljava/lang/String;)V
    .locals 5

    iget-object v1, p0, Lorg/telegram/messenger/volley/Request;->mRequestQueue:Lorg/telegram/messenger/volley/RequestQueue;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/volley/Request;->mRequestQueue:Lorg/telegram/messenger/volley/RequestQueue;

    invoke-virtual {v1, p0}, Lorg/telegram/messenger/volley/RequestQueue;->finish(Lorg/telegram/messenger/volley/Request;)V

    :cond_0
    sget-boolean v1, Lorg/telegram/messenger/volley/VolleyLog$MarkerLog;->ENABLED:Z

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v1, v4, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lorg/telegram/messenger/volley/Request$1;

    invoke-direct {v1, p0, p1, v2, v3}, Lorg/telegram/messenger/volley/Request$1;-><init>(Lorg/telegram/messenger/volley/Request;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/volley/Request;->mEventLog:Lorg/telegram/messenger/volley/VolleyLog$MarkerLog;

    invoke-virtual {v1, p1, v2, v3}, Lorg/telegram/messenger/volley/VolleyLog$MarkerLog;->add(Ljava/lang/String;J)V

    iget-object v1, p0, Lorg/telegram/messenger/volley/Request;->mEventLog:Lorg/telegram/messenger/volley/VolleyLog$MarkerLog;

    invoke-virtual {p0}, Lorg/telegram/messenger/volley/Request;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/volley/VolleyLog$MarkerLog;->finish(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBody()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/volley/AuthFailureError;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/telegram/messenger/volley/Request;->getParams()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/volley/Request;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/volley/Request;->encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/volley/Request;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheEntry()Lorg/telegram/messenger/volley/Cache$Entry;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/volley/Request;->mCacheEntry:Lorg/telegram/messenger/volley/Cache$Entry;

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/messenger/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorListener()Lorg/telegram/messenger/volley/Response$ErrorListener;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/volley/Request;->mErrorListener:Lorg/telegram/messenger/volley/Response$ErrorListener;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/volley/AuthFailureError;
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/volley/Request;->mMethod:I

    return v0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/volley/AuthFailureError;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getParamsEncoding()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "UTF-8"

    return-object v0
.end method

.method public getPostBody()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/volley/AuthFailureError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/telegram/messenger/volley/Request;->getPostParams()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/volley/Request;->getPostParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/volley/Request;->encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPostBodyContentType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/telegram/messenger/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPostParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/volley/AuthFailureError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/telegram/messenger/volley/Request;->getParams()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getPostParamsEncoding()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/telegram/messenger/volley/Request;->getParamsEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lorg/telegram/messenger/volley/Request$Priority;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/volley/Request$Priority;->NORMAL:Lorg/telegram/messenger/volley/Request$Priority;

    return-object v0
.end method

.method public getRetryPolicy()Lorg/telegram/messenger/volley/RetryPolicy;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/volley/Request;->mRetryPolicy:Lorg/telegram/messenger/volley/RetryPolicy;

    return-object v0
.end method

.method public final getSequence()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/volley/Request;->mSequence:Ljava/lang/Integer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getSequence called before setSequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/volley/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/volley/Request;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTimeoutMs()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/volley/Request;->mRetryPolicy:Lorg/telegram/messenger/volley/RetryPolicy;

    invoke-interface {v0}, Lorg/telegram/messenger/volley/RetryPolicy;->getCurrentTimeout()I

    move-result v0

    return v0
.end method

.method public getTrafficStatsTag()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/volley/Request;->mDefaultTrafficStatsTag:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/volley/Request;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hasHadResponseDelivered()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/volley/Request;->mResponseDelivered:Z

    return v0
.end method

.method public isCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/volley/Request;->mCanceled:Z

    return v0
.end method

.method public markDelivered()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/volley/Request;->mResponseDelivered:Z

    return-void
.end method

.method protected parseNetworkError(Lorg/telegram/messenger/volley/VolleyError;)Lorg/telegram/messenger/volley/VolleyError;
    .locals 0

    return-object p1
.end method

.method protected abstract parseNetworkResponse(Lorg/telegram/messenger/volley/NetworkResponse;)Lorg/telegram/messenger/volley/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/volley/NetworkResponse;",
            ")",
            "Lorg/telegram/messenger/volley/Response",
            "<TT;>;"
        }
    .end annotation
.end method

.method public setCacheEntry(Lorg/telegram/messenger/volley/Cache$Entry;)Lorg/telegram/messenger/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/volley/Cache$Entry;",
            ")",
            "Lorg/telegram/messenger/volley/Request",
            "<*>;"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/messenger/volley/Request;->mCacheEntry:Lorg/telegram/messenger/volley/Cache$Entry;

    return-object p0
.end method

.method public setRequestQueue(Lorg/telegram/messenger/volley/RequestQueue;)Lorg/telegram/messenger/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/volley/RequestQueue;",
            ")",
            "Lorg/telegram/messenger/volley/Request",
            "<*>;"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/messenger/volley/Request;->mRequestQueue:Lorg/telegram/messenger/volley/RequestQueue;

    return-object p0
.end method

.method public setRetryPolicy(Lorg/telegram/messenger/volley/RetryPolicy;)Lorg/telegram/messenger/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/volley/RetryPolicy;",
            ")",
            "Lorg/telegram/messenger/volley/Request",
            "<*>;"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/messenger/volley/Request;->mRetryPolicy:Lorg/telegram/messenger/volley/RetryPolicy;

    return-object p0
.end method

.method public final setSequence(I)Lorg/telegram/messenger/volley/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/telegram/messenger/volley/Request",
            "<*>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/volley/Request;->mSequence:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setShouldCache(Z)Lorg/telegram/messenger/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/telegram/messenger/volley/Request",
            "<*>;"
        }
    .end annotation

    iput-boolean p1, p0, Lorg/telegram/messenger/volley/Request;->mShouldCache:Z

    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lorg/telegram/messenger/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/telegram/messenger/volley/Request",
            "<*>;"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/messenger/volley/Request;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method public final shouldCache()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/volley/Request;->mShouldCache:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/messenger/volley/Request;->getTrafficStatsTag()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lorg/telegram/messenger/volley/Request;->mCanceled:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "[X] "

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/messenger/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/messenger/volley/Request;->getPriority()Lorg/telegram/messenger/volley/Request$Priority;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/volley/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, "[ ] "

    goto :goto_0
.end method
