.class Landroid/support/v4/widget/TextViewCompatApi23;
.super Ljava/lang/Object;
.source "TextViewCompatApi23.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTextAppearance(Landroid/widget/TextView;I)V
    .locals 0
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end parameter

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-void
.end method
