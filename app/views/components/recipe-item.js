import Component from '@glimmer/component';
import { tracked } from '@glimmer/tracking';
import { action } from '@ember/object'

export default class RecipeItemComponent extends Component {
    get totalCount() {
        return this.args.count * this.args.recipecount;
    }
    get totalCost() {
        return this.args.count * this.args.recipecount;
    }
    updateCount(e){
        console.log("1")
        console.log(e)
    }
}
