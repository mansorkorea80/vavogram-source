.class public Lorg/telegram/khalkhaloka/About;
.super Landroid/app/Activity;
.source "About.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Lorg/telegram/khalkhaloka/About;->setContentView(I)V

    return-void
.end method
