.class Lorg/telegram/khalkhaloka/Coustumize$3;
.super Ljava/lang/Object;
.source "Coustumize.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/khalkhaloka/Coustumize;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/khalkhaloka/Coustumize;


# direct methods
.method constructor <init>(Lorg/telegram/khalkhaloka/Coustumize;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/khalkhaloka/Coustumize$3;->this$0:Lorg/telegram/khalkhaloka/Coustumize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/telegram/khalkhaloka/Coustumize$3;->this$0:Lorg/telegram/khalkhaloka/Coustumize;

    const-class v2, Lorg/telegram/hoshyar/Activity/SelectColorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lorg/telegram/khalkhaloka/Coustumize$3;->this$0:Lorg/telegram/khalkhaloka/Coustumize;

    invoke-virtual {v1, v0}, Lorg/telegram/khalkhaloka/Coustumize;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
