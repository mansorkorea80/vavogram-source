.class final Lorg/telegram/messenger/query/StickersQuery$7;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->loadRecents(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$gif:Z

.field final synthetic val$type:I


# direct methods
.method constructor <init>(IZ)V
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/query/StickersQuery$7;->val$type:I

    iput-boolean p2, p0, Lorg/telegram/messenger/query/StickersQuery$7;->val$gif:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 5

    const/4 v0, 0x0

    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_recentStickers;

    if-eqz v2, :cond_0

    move-object v1, p1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_recentStickers;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_recentStickers;->stickers:Ljava/util/ArrayList;

    :cond_0
    iget v2, p0, Lorg/telegram/messenger/query/StickersQuery$7;->val$type:I

    iget-boolean v3, p0, Lorg/telegram/messenger/query/StickersQuery$7;->val$gif:Z

    const/4 v4, 0x0

    #calls: Lorg/telegram/messenger/query/StickersQuery;->processLoadedRecentDocuments(ILjava/util/ArrayList;ZI)V
    invoke-static {v2, v0, v3, v4}, Lorg/telegram/messenger/query/StickersQuery;->access$600(ILjava/util/ArrayList;ZI)V

    return-void
.end method
