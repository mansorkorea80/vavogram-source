.class Lorg/telegram/messenger/ImageLoader$CacheImage$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ImageLoader$CacheImage;->setImageAndClear(Landroid/graphics/drawable/BitmapDrawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/ImageLoader$CacheImage;

.field final synthetic val$finalImageReceiverArray:Ljava/util/ArrayList;

.field final synthetic val$image:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ImageLoader$CacheImage;Landroid/graphics/drawable/BitmapDrawable;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$CacheImage$1;->this$1:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$CacheImage$1;->val$image:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p3, p0, Lorg/telegram/messenger/ImageLoader$CacheImage$1;->val$finalImageReceiverArray:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$CacheImage$1;->val$image:Landroid/graphics/drawable/BitmapDrawable;

    instance-of v4, v4, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v4, :cond_4

    const/4 v2, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheImage$1;->val$image:Landroid/graphics/drawable/BitmapDrawable;

    check-cast v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$CacheImage$1;->val$finalImageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$CacheImage$1;->val$finalImageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/ImageReceiver;

    if-nez v0, :cond_1

    move-object v4, v1

    :goto_1
    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$CacheImage$1;->this$1:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader$CacheImage$1;->this$1:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-boolean v6, v6, Lorg/telegram/messenger/ImageLoader$CacheImage;->thumb:Z

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmapByKey(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;ZZ)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->makeCopy()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v4

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$CacheImage$1;->val$image:Landroid/graphics/drawable/BitmapDrawable;

    check-cast v4, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$CacheImage$1;->val$finalImageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$CacheImage$1;->val$finalImageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$CacheImage$1;->val$image:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$CacheImage$1;->this$1:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader$CacheImage$1;->this$1:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-boolean v6, v6, Lorg/telegram/messenger/ImageLoader$CacheImage;->thumb:Z

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmapByKey(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;ZZ)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
