.class public Lcom/reoky/crackme/challengefour/listeners/ChallengeFourFragmentOnClickListener;
.super Ljava/lang/Object;
.source "ChallengeFourFragmentOnClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private fragment:Lcom/reoky/crackme/challengefour/fragments/ChallengeFourFragment;


# direct methods
.method public constructor <init>(Lcom/reoky/crackme/challengefour/fragments/ChallengeFourFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/reoky/crackme/challengefour/fragments/ChallengeFourFragment;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/reoky/crackme/challengefour/listeners/ChallengeFourFragmentOnClickListener;->fragment:Lcom/reoky/crackme/challengefour/fragments/ChallengeFourFragment;

    .line 19
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 24
    .local v0, "parent":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 30
    :goto_0
    return-void

    .line 27
    :pswitch_0
    iget-object v1, p0, Lcom/reoky/crackme/challengefour/listeners/ChallengeFourFragmentOnClickListener;->fragment:Lcom/reoky/crackme/challengefour/fragments/ChallengeFourFragment;

    invoke-virtual {v1}, Lcom/reoky/crackme/challengefour/fragments/ChallengeFourFragment;->checkLocation()V

    goto :goto_0

    .line 24
    :pswitch_data_0
    .packed-switch 0x7f090008
        :pswitch_0
    .end packed-switch
.end method
