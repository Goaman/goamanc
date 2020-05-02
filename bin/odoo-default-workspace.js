#!node
let odooFolder = process.argv[2]
const obj = {
	"folders": [
		{
			"path": `/home/odoo/src/${odooFolder}/odoo`
		},
		{
			"path": `/home/odoo/src/${odooFolder}/enterprise`
		},
		{
			"path": `/home/odoo/src/${odooFolder}/design-themes`
		},
		{
			"path": "/home/odoo/notes"
		},
		{
			"path": "/home/odoo/projects/internal"
		},
		{
			"path": "/home/odoo/projects/support-tools"
		}
	]
}
console.log(JSON.stringify(obj))
